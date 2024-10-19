import 'package:banana_query_core/foods/recipe/recipe.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CookingInstructionsStepper extends StatefulWidget {
  const CookingInstructionsStepper({super.key, required this.instructions });

  final List<CookingStep> instructions;

  @override
  State<StatefulWidget> createState() {
    return CookingInstructionsStepperState();
  }
}

class CookingInstructionsStepperState extends State<CookingInstructionsStepper> {

  List<CookingStep> get instructions => widget.instructions;
  ScrollController stepperController = ScrollController();

  int currentStep = 0;

  BoxConstraints maxMediaHeight = const BoxConstraints(maxHeight: 300);
  EdgeInsets padding = const EdgeInsets.all(8.0);

  void nextStep() {
    if (currentStep < instructions.length - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (instructions.isNotEmpty)
          Expanded(
              child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox(
                        width: constraints.maxWidth,
                        child: Stepper(
                            controller: stepperController,
                            currentStep: currentStep,
                            steps: instructions.map((instruction) =>
                                Step(
                                  title: Text(instruction.title),
                                  content: Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        if (instruction.videoUrl != null)
                                          StatefulBuilder(
                                              builder: (BuildContext context, StateSetter setState) {
                                                VideoPlayerController controller = VideoPlayerController.networkUrl(Uri.parse(instruction.videoUrl!));
                                                ChewieController chewieController = ChewieController(
                                                  videoPlayerController: controller,
                                                  autoPlay: false,
                                                  looping: false,
                                                );

                                                return FutureBuilder(
                                                    future: controller.initialize(),
                                                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                                                      if (snapshot.connectionState == ConnectionState.done) {
                                                        // If the VideoPlayerController has finished initialization, use
                                                        // the data it provides to limit the aspect ratio of the video.
                                                        return Container(
                                                            constraints: maxMediaHeight,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(10.0),
                                                              child: AspectRatio(
                                                                aspectRatio: controller.value.aspectRatio,
                                                                // Use the VideoPlayer widget to display the video.
                                                                child: Chewie(controller: chewieController),
                                                              ),
                                                            )
                                                        );
                                                      } else {
                                                        // If the VideoPlayerController is still initializing, show a
                                                        // loading spinner.
                                                        return const Center(
                                                          child: CircularProgressIndicator(),
                                                        );
                                                      }
                                                    }
                                                );
                                              }
                                          ),
                                        if (instruction.imageUrl != null)
                                          ConstrainedBox(
                                            constraints: maxMediaHeight,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10.0),
                                              child: Image(image: NetworkImage(instruction.imageUrl!)),
                                            )
                                          ),
                                        if (instruction.description != null)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                                            child: Text(instruction.description!),
                                          )
                                      ],
                                    ),
                                  ),
                                )
                            ).toList(),
                            onStepTapped: (int step) {
                              setState(() {
                                currentStep = step;
                              });
                            },
                            controlsBuilder: (BuildContext context, ControlsDetails details) {
                              return Row(
                                children: [
                                  if (details.stepIndex > 0)
                                    TextButton(
                                      onPressed: previousStep,
                                      child: const Text('back'),
                                    ),
                                  if (details.stepIndex < instructions.length - 1)
                                    TextButton(
                                      onPressed: nextStep,
                                      child: const Text('next'),
                                    ),
                                ],
                              );
                            }
                        )
                    );
                  }
              )
          )
      ],
    );
  }
}