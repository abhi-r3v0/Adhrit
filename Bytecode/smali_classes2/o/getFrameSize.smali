.class public final Lo/getFrameSize;
.super Lo/WireFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFrameSize$ICustomTabsCallback;,
        Lo/getFrameSize$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2067
    invoke-virtual {p0, v0}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 1067
    invoke-virtual {p0, v0}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3067
    invoke-virtual {p0, v0}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
