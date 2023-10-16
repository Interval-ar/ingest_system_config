# Configuracion del sistema previo a la ejecucion del programa principal


<hr>

## Dependencias

### udisks2 y polkit
> udisks2 es el backend encargado de la administracion de montado y desmontado de los dispositivos con sistema de archivos(requiere elevacion)
>  polkit es un sistema de permisos que se encarga de limitar los permisos a los usuarios no root

Polkit esta integrado en debian y distros basadas en debian.

Udisks2 puede ser instalado con este comando `sudo apt-get install udisks2` 


### 




<details>
  <summary>Configuracion de permisos</summary>
  
  
Para evadir la restriccion de polkit sobre el montaje de archivos mediante udisks vamos a garantizar estos permisos con una nueva regla

``` bash
#Chequeamos la version de polkit con
$ pkaction --version
pkaction version {version}
```

Para polkit version < 0.106

  `/etc/polkit-1/localauthority/10-vendor.d/mount-permissions.pkla`
  
  [mount-permissions.pkla](https://github.com/Intervaltl/ingest_system_config/blob/main/mount-permissions.pkla)

Para polkit version ≥ 0.106 (no testeado)

`/etc/polkit-1/rules.d/10-udisks2.rules`
  
[10-udisks2.rules](https://github.com/Intervaltl/ingest_system_config/blob/main/10-udisks2.rules)
<hr>
</details>

<details>
  <summary>Comandos de montaje y desmontaje</summary>
  
```
#montaje
udisksctl mount -b /dev/sd** --no-user-interaction
```

```
#desmontaje
disksctl unmount -b /dev/sd**
```
  ** hace referencia a la letra del dispositivo y numero de la particion a montar
</details>

  <hr>
