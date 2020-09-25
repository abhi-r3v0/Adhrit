.class final Lo/Feature;
.super Ljava/io/OutputStream;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0

    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lo/setEnabledFeatures;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 5
    invoke-static {p1}, Lo/setEnabledFeatures;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
