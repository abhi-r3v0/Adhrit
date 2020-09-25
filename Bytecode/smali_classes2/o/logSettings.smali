.class public final Lo/logSettings;
.super Lo/translate;
.source ""

# interfaces
.implements Lo/getStoredBuildInstanceIdentifier;


# instance fields
.field private onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/translate;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/logSettings;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/logSettings;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
