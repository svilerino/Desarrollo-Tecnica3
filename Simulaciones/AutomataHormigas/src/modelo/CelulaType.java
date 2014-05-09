package modelo;

public enum CelulaType {
	TIERRA(0), HORMIGA(1), PLANTA(2);

	private int celulaType;

	private CelulaType(int type){
		this.celulaType=type;
	}

	public int getCelulaType() {
		return celulaType;
	}

	public void setCelulaType(int celulaType) {
		this.celulaType = celulaType;
	}
}
