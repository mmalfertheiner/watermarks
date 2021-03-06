# Load the watermark
watermark <- as.matrix(read.table("outputs/watermark", header=F))

# Detect
detect <- function(image) {

	# Pearson correlation
	result <- cor.test(image, watermark, method="pearson")

	# Check
	if (result$estimate >= 0.02) {
		return (TRUE)
	}

	return (FALSE)
	
}

