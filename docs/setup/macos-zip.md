
# macOS Manual Download

You can use a manual build of Enclave if you'd prefer to use Enclave as an interactive program rather than a background daemon.

1. Download the latest version of Enclave:
<div class="download-container">
    <a id="download-osx-manual" target="_blank" rel="noopener noreferer"><button>Download Enclave for macOS</button></a>
    <p id="zip-url" class="download-url"></p>
    <div class="checksum-container">
    <p>Zip Checksum (<span id="hash-alg">loading ...</span>)</p>
    <p><code id="checksum" class="checksum">----------------------------------------------------------------</code></p>
    </div>
    </div>

2. Extract the zip file, and open a terminal in the extracted directory.

3. Enrol your system with your Enclave Organisation   
```bash
sudo enclave enrol
```
You will be asked for a valid Enrolment Key from your [Portal](https://portal.enclave.io/) account.
> Enclave stores the generated private keys for your local Enclave identity in a way that prevents easy access without local admin privileges, which is why this command runs under sudo.

4. Run enclave interactively
```bash
sudo enclave run
```
    
5. Depending on the type of enrolment key you used to enrol your new system, it might be held waiting for an Administrator to provide enrolment approval in your account [Portal](https://portal.enclave.io/). Log in to authorise the enrolment of your new system if you need to, and configure additional options like DNS.

**You're all set!** You've successfully enrolled a new system to your Enclave account.

## Starting and stopping Enclave

If running interactively, you can launch Enclave with `sudo enclave run`.  Press `control+C` to exit.

## Updating Enclave

To update Enclave in 'Manual' mode, download the latest zip file and replace the existing folder.  Your existing configuration will be preserved.

## Uninstalling Enclave

To remove the Enclave software, just delete the folder you downloaded!

This will remove the binaries from your system, but your Enclave configuration, private keys and log files will be left in-place. 

If you wish to fully clear Enclave from your system, run:

```
sudo rm -R /etc/enclave
sudo rm -R /var/log/enclave
```

This will remove all configuration, private keys and log files from your system along with the Enclave binaries.

> **Note:** Enclave does not backup a system's private keys. Lost or deleted private keys are not recoverable. If a system's configuration and private keys are lost, to use that system with Enclave again it must be re-enrolled.   


<script type="text/javascript">
  fetch("https://install.enclave.io/manifest/osx.json", { method: 'get' })
    .then(response => response.json())
    .then(jsonResult => {
      var latest = jsonResult.ReleaseVersions.reverse().find(releaseVersion => { return releaseVersion.ReleaseType === 'GA'; });
      var url = latest?.Packages[0].Url;
      var hash = latest?.Packages[0].Hash;
      var hashAlg = latest?.Packages[0].HashAlg;

      document.getElementById("download-osx-manual").href = url;
      document.getElementById("zip-url").innerHTML = url;
      document.getElementById("hash-alg").innerHTML = hashAlg.toLowerCase();
      document.getElementById("checksum").innerHTML = base64ToHex(hash);
    })
    .catch(err => {
      console.log(err);
      document.getElementById("download-osx-manual").href = "https://portal.enclave.io/my/new-system";
    });

  function base64ToHex(str) {
    const raw = atob(str);
    let result = '';
    for (let i = 0; i < raw.length; i++) {
      const hex = raw.charCodeAt(i).toString(16);
      result += (hex.length === 2 ? hex : '0' + hex);
    }
    return result;
  }
</script>
