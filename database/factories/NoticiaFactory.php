<?php

namespace Database\Factories;

use App\Models\Noticia;
use Illuminate\Database\Eloquent\Factories\Factory;

class NoticiaFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Noticia::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "titulo" => $this->faker->sentence(),
            "autor_id" => $this->faker->numberBetween(1,4),          
            "fecha_publicacion"=> $this->faker->dateTimeBetween('-2 days','+2 days'),
            "contenido"=> $this->faker->paragraph(20),
            "url" => $this->faker->randomElement(
                ['https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3414464_presidente_gobierno_pedro_sanchez_interviene_acto_presentacion_plan_recuperacion_20201105140527-kV7D-U49361158425yYF-992x558@LaVanguardia-Web.jpg',
                'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3419052_rey_felipe_vi_junto_representantes_colectividad_espanola_visita_bolivia_asistir_20201108120544-kIrE-XN6VE48MJ1AOC75C-992x558@LaVanguardia-Web.jpg',
                'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/20201110-637406096580094420_20201110132028-kQFD-U49386554113lpD-992x558@LaVanguardia-Web.jpg',
                'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/11/10/Recortada/EuropaPress_3422304_valores_ibex_35_bolsa_madrid_espana_10_noviembre_2020_ibex_35_iniciado_sesion_20201110102031-khKG-U49384605019jcC-992x558@LaVanguardia-Web.jpg']
            ),
            "categoria_id"=> $this->faker->numberBetween(1,2)
        ];
    }
}
