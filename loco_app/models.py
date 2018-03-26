from django.db import models
from django.core.validators import MinValueValidator

# Модель филиалов
class Filial(models.Model):
    name = models.CharField('Название филиала', max_length=70)

    def __str__(self):
        return self.name

# Модель описывающая локомотивы
class LocoSeries(models.Model):
    series = models.CharField('Серия', max_length=30)
    rate = models.DecimalField('Ставка', max_digits=4, decimal_places=2)

    def __str__(self):
        return self.series

# Модель присваивания локомотива к филиалу
class LocoInFilial(models.Model):
    filial = models.ForeignKey('Filial')
    series = models.ForeignKey('LocoSeries')

    def __str__(self):
        return '{0} | {1}'.format(self.filial, self.series)

# Модель описывающая пробег
class Mileage(models.Model):
    loco_id = models.ForeignKey('LocoInFilial')
    year = models.PositiveIntegerField('Год',
                                       validators=[
                                           MinValueValidator(2017)],
                                       help_text="Используйте формат типа: 2017")
    # mileage = models.DecimalField('Пробег', max_digits=20, decimal_places=10, blank=True, null=True)
    mileage = models.PositiveIntegerField('Пробег')

    def __str__(self):
        return '{0} | {1}'.format(self.loco_id, self.year)