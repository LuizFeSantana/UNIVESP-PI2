from django.views.generic import TemplateView

# Create your views here.
class PaginaInicial(TemplateView):
    template_name = 'paginas/index.html'

class Sobre(TemplateView):
    template_name = 'paginas/sobre.html'

class Parceiros(TemplateView):
    template_name = 'paginas/parceiros.html'

class Cad_Animal(TemplateView):
    template_name = 'paginas/cad_animal.html'

class Login(TemplateView):
    template_name = 'paginas/login.html'

class Tutor(TemplateView):
    template_name = 'paginas/tutor.html'

class Ong(TemplateView):
    template_name = 'paginas/ong.html'

class Clinica(TemplateView):
    template_name = 'paginas/clinica.html'

class Veterinario(TemplateView):
    template_name = 'paginas/veterinario.html'