.class public abstract Lo/getStringsFileValue;
.super Lo/calculateUsedDiskSpaceInBytes;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/calculateUsedDiskSpaceInBytes;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getIdToken()Ljava/lang/String;
.end method

.method public abstract getSecret()Ljava/lang/String;
.end method
