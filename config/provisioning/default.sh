#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://..."

APT_PACKAGES=(
    axel
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/cubiq/ComfyUI_essentials"
)

CHECKPOINT_MODELS=(
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    "https://civitai.com/api/download/models/799569?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/679172?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/846897?type=Model&format=SafeTensor&size=full&fp=fp32"
    "https://civitai.com/api/download/models/678953?type=Model"
    "https://civitai.com/api/download/models/423235?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/958003?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/951424?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/858718?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/738965?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1066045?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1099127?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/934796?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/998694?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.om/api/download/models/912997?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/605022?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/930779?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/421137?type=Model&format=SafeTensor&size=full&fp=fp32"
    "https://civitai.com/api/download/models/1000960?type=Model&format=SafeTensor&size=full&fp=fp8"
    "https://civitai.com/api/download/models/487082?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1137047?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/659724?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1107120?type=Model&format=SafeTensor&size=pruned&fp=fp32"
    "https://civitai.com/api/download/models/1097040?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/947488?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/164715?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/265836?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/339195?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/712530?type=Model&format=SafeTensor&size=full&fp=fp32"
    "https://civitai.com/api/download/models/1163294?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/992946?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/299716?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/714208?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1185722?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1179537?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1181792?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1163849?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1181754?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/1133166?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/462031?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/317260?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/714801?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/1034420?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/525078?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/720355?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/276356?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/650381?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/472912?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/474681?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    "https://civitai.com/api/download/models/993063?type=Model&format=SafeTensor&size=full&fp=fp16"
    "https://civitai.com/api/download/models/63193?type=Model&format=SafeTensor&size=pruned&fp=fp16"
)

UNET_MODELS=(
    "https://civitai.com/api/download/models/928804?type=Model&format=SafeTensor&size=pruned&fp=fp8"
    "https://civitai.com/api/download/models/1013269?type=Model&format=SafeTensor&size=pruned&fp=fp8"
)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
    "https://civitai.com/api/download/models/1065885?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/872125?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/135867?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/293991?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/152309?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/141133?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/55777?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/658043?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/629646?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/518363?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/679530?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/155607?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/518850?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/854705?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/957323?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/578362?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/922784?type=Model&format=SafeTensor&size=full&fp=fp32"
    "https://civitai.com/api/download/models/856391?type=Model&format=SafeTensor&size=full&fp=bf16"
    "https://civitai.com/api/download/models/629289?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/62676?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/138469?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/980041?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/763277?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1098312?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/570736?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/957943?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/114908?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1147601?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/172998?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/535193?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/717230?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/1102548?type=Model&format=SafeTensor"
    
    
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
    "https://civitai.com/api/download/models/1185722?type=VAE&format=SafeTensor"
    "https://civitai.com/api/download/models/714801?type=VAE&format=SafeTensor"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors?download"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/t2i-adapter_diffusers_xl_openpose.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    "https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
        # Construct the correct download URL for Civitai
        correct_download_url="${1}&token=${CIVITAI_TOKEN}"
    fi

    if [[ -n $auth_token ]]; then
        if [[ -n $correct_download_url ]]; then
            axel -o "$2" "$correct_download_url"
        else
            axel -o "$2" "$1"
        fi
    else
        axel -o "$2" "$1"
    fi
}

provisioning_start
