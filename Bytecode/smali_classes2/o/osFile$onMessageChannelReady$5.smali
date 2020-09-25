.class final Lo/osFile$onMessageChannelReady$5;
.super Lo/osFile$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/osFile$onMessageChannelReady;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/osFile<",
        "TK;TV;>.ICustomTabsCallback<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/osFile$onMessageChannelReady;)V
    .locals 0

    .line 832
    iget-object p1, p1, Lo/osFile$onMessageChannelReady;->extraCallback:Lo/osFile;

    invoke-direct {p0, p1}, Lo/osFile$ICustomTabsCallback;-><init>(Lo/osFile;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lo/osFile$onMessageChannelReady$5;->onNavigationEvent()Lo/osFile$onRelationshipValidationResult;

    move-result-object v0

    iget-object v0, v0, Lo/osFile$onRelationshipValidationResult;->asInterface:Ljava/lang/Object;

    return-object v0
.end method
