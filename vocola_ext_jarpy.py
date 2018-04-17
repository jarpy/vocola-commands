from datetime import datetime

# Vocola function: Jarpy.UTCNow
def utcnow():
    return datetime.utcnow().isoformat()
