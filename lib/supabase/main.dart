import 'package:supabase/supabase.dart';

void main() async {
  final supabase = SupabaseClient('https://qzluruvbtmpyperurgfw.supabase.co', 
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF6bHVydXZidG1weXBlcnVyZ2Z3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njk4ODMwODUsImV4cCI6MTk4NTQ1OTA4NX0.ZXDl19jOkqx4ZdfPAyYASR77gspepv8VrWNLWMCqktc');

  final data = await supabase.from('countries').select().order('name', ascending: true);

  for (var i = 0; i < data.length; i++) {
    print(data[i]);
  }
}
