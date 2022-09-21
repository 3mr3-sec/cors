<div align="center">
  <br />
  <a href="https://github.com/userdehghani/cors" target="_blank" rel="noopener noreferrer">
    <div>
      <img src="interface/assets/images/bear.svg" width="150" height="150" alt="cors-misconfiguration" />
    </div>
  </a>
  <br />
  <b>CORS Exploitation web-page</b>
</div>

<br />

<strong>
  <ul>
    <li>
      <a href="#installation">Installation</a>
    </li>
    <li>
      <a href="#usage">Usage</a>
    </li>
    <li>
      <a href="#to-do-list">To-Do List</a>
    </li>
  </ul>
</strong>

<br />

<p>
  - Reusable web-page to exploit <a href="https://portswigger.net/web-security/cors" target="_blank"
    rel="noopener noreferrer">CORS Misconfiguration</a>.
</p>

### Installation

```bash
go install github.com/userdehghani/cors@latest
```

### Usage

```bash
cors
```

### To-Do List

- [x] Add [interface](/interface)
- [x] Add [exploit](/interface/assets/js/exploit.js)
- [x] Add [web-server](/main.go)
- [x] [Embed interface](/interface.go) into `bin` file
- [x] Add [Dockerfile](/Dockerfile)
- [ ] Smart [port-binding](/main.go)
- [ ] Confirm toast to open `Network` tab
- [ ] Live area to update exploit
- [ ] Update `etc/hosts` based on `-u`