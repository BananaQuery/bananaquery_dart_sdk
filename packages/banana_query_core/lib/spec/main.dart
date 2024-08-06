import 'package:openapi_spec/openapi_spec.dart';

void main() async {
  // ==========================================
  // Define the spec
  // ==========================================

  final spec = OpenApi(
    info: Info(
      title: 'BananaQuery API',
      version: '1.0.0',
    ),
    paths: {
      'v1/search': PathItem(
        get: Operation(
          responses: {
            '200': Response(
              description: 'Successful response',
              content: {
                'application/json': MediaType(
                  schema: Schema.array(
                    items: Schema.object(
                      title: 'NutritionalEntity',
                      properties: {
                        'id': Schema.integer(),
                        'name': Schema.string(),
                        'description': Schema.string(),
                        'type': Schema.string(),
                        'food_category': Schema.string(),
                        'nutrients': Schema.array(
                          items: Schema.object(
                            title: 'Nutrient',
                            properties: {
                              'id': Schema.integer(),
                              'name': Schema.string(),
                              'unit': Schema.string(),
                              'value': Schema.number(),
                            },
                          ),
                        ),
                        'portions': Schema.array(
                          items: Schema.object(
                            title: 'Portion',
                            properties: {
                              'id': Schema.integer(),
                              'name': Schema.string(),
                              'description': Schema.string(),
                              'conversion_factor': Schema.number(),
                              'gram_weight': Schema.number(),
                              'data_points': Schema.integer(),
                              'standard_deviation': Schema.number(),
                            },
                          ),
                        ),
                      },
                    ),
                  ),
                ),
              },
            ),
          },
        ),
      ),
    }
  );

  // ==========================================
  // Export to Swagger UI
  // ==========================================

  await spec.toSwaggerUI(
    destination: './build/swagger_ui',
    replace: true,
  );
}