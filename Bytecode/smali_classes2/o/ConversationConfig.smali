.class final enum Lo/ConversationConfig;
.super Lo/setJwtIdToken;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;ILo/getJwtIdToken;I)V
    .locals 6

    const/16 v2, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lo/setJwtIdToken;-><init>(Ljava/lang/String;ILo/getJwtIdToken;ILo/getAndroidDeviceMeta;)V

    return-void
.end method
