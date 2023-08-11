from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic.list import ListView

from .models import Animal, Usuario, Ongs, Servicos, Veterinario, Clinica, Localizacao, LarDefinitivo, LarTemporario

from django.urls import reverse_lazy

# Create your views here.

class UsuarioCreate(CreateView):
    model = Usuario
    fields = ['nome', 'cpf', 'rg', 'funcao', 'email', 'endereco']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class OngsCreate(CreateView):
    model = Ongs
    fields = ['cnpj', 'razaosocial', 'email', 'resp', 'telefone', 'endereco', 'cep']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class ClinicaCreate(CreateView):
    model = Clinica
    fields = ['cnpj', 'razaosocial', 'medicoresp', 'endereco', 'bairro', 'estado', 'cep', 'telefone']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class VeterinarioCreate(CreateView):
    model = Veterinario
    fields = ['nome', 'crmv', 'celular', 'endereco']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')


######################## UPDATE ########################

class UsuarioUpdate(UpdateView):
    model = Usuario
    fields = ['nome', 'cpf', 'rg', 'funcao', 'email', 'endereco']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class OngsUpdate(UpdateView):
    model = Ongs
    fields = ['cnpj', 'razaosocial', 'email', 'resp', 'telefone', 'endereco', 'cep']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class ClinicaUpdate(UpdateView):
    model = Clinica
    fields = ['cnpj', 'razaosocial', 'medicoresp', 'endereco', 'bairro', 'estado', 'cep', 'telefone']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

class VeterinarioUpdate(UpdateView):
    model = Veterinario
    fields = ['nome', 'crmv', 'celular', 'endereco']
    template_name = 'cadastros/form.html'
    success_url = reverse_lazy('index')

    ######################## DELETE ########################

class UsuarioDelete(DeleteView):
    model = Usuario
    template_name = 'cadastros/form-excluir.html'
    success_url = reverse_lazy('index')

class OngsDelete(DeleteView):
    model = Ongs
    template_name = 'cadastros/form-excluir.html'
    success_url = reverse_lazy('index')

class ClinicaDelete(DeleteView):
    model = Clinica
    template_name = 'cadastros/form-excluir.html'
    success_url = reverse_lazy('index')

class VeterinarioDelete(DeleteView):
    model = Veterinario
    template_name = 'cadastros/form-excluir.html'
    success_url = reverse_lazy('index')    

######################## UPDATE ########################

class UsuarioList(ListView):
    model = Usuario
    template_name = 'cadastros/listas/tutor.html'

class OngsList(ListView):
    model = Ongs
    template_name = 'cadastros/listas/ong.html'

class ClinicaList(ListView):
    model = Clinica
    template_name = 'cadastros/listas/clinica.html'

class VeterinarioList(ListView):
    model = Veterinario
    template_name = 'cadastros/listas/veterinario.html'  