/*Dada el peso, la altura y el sexo, de unos estudiantes. Determinar la cantidad de vitaminas que
deben consumir estos estudiantes, en base al siguiente criterio: Si son varones, y su estatura es
mayor a 1.60, y su peso es mayor o igual a 150 lb, su dosis, serán: 20% de la estatura y 80% de
su peso. De lo contrario, la dosis será la siguiente: 30% de la estatura y 70% de su peso. Si son
mujeres, y su estatura es mayor de a 1.50 m y su peso es mayor o igual a 130 lb, su dosis será:
25% de la estatura y 75% de su peso. De lo contrario, la dosis será: 35% de la estatura y 65% de
su peso. La dosis debe ser expresada en gramos. La cantidad de vitaminas solo es aplicable a
personas mayores de 18 años.
Además, se solicita el proceso se repita tantas veces como el usuario desee. Es decir, debemos
hacer un proceso repetitivo.*/
#include <stdio.h>
#include <conio.h>
int main()
{
    int i, s, edad;
    float estatura, peso, a, b, total;
    printf("Escriba 1 para empezar, 0 para finalizar\n");
    scanf("%i",&i);
if (i!=0)
{
    do
    {
        s=0;
        printf("Escriba 1 si el paciente es varon, cualquier otro numero si es mujer\n");
        scanf("%i",&s);

        printf("Escriba la estatura del estudiante en metros\n");
        scanf ("%f",&estatura);
        while (estatura<1 || estatura>2.2)
        {
            printf("Escriba una estatura valida\n");
            scanf ("%f",&estatura);
        }
        

        printf("Escriba el peso en lb del estudiante\n");
        scanf("%f",&peso);
        while (peso<=50 || peso>300)
        {
            printf("Escriba un peso valido\n");
            scanf("%f",&peso);
        }
        
        printf("Escriba la edad del estudiante\n");
        scanf("%i",&edad);
        while (edad<=0 || edad>60)
        {
            printf("Escriba una edad valida\n");
            scanf("%i",&edad);
        }

        if (edad>=18)
        {
            if (s==1)
            {
                if (estatura>1.6 && peso>=150)
                {
                    a=estatura*0.2;
                    b=peso*0.8;
                }
                else
                {
                    a=estatura*0.3;
                    b=peso*0.7;
                }
            }
            else
            {
                if (estatura>1.5 && peso>=130)
                {
                    a=estatura*0.25;
                    b=peso*0.75;
                }
                else
                {
                    a=estatura*0.35;
                    b=peso*0.65;
                }
            }
            total=a+b;
            printf("La dosis recetada es de %.2fgr\n",total);
        }
        else
        {
            printf("La dosis no aplica para personas menores a 18 años de edad\n");
        }

        printf("Escriba 1 para continuar, 0 para finalizar\n");
        scanf("%i",&i);
    } while (i!=0);
}
    printf("Fin");
    
    
    getch();
    return 0;
}