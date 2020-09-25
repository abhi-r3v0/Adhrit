.class final Lo/reverseIteratorFrom$extraCallback$5;
.super Lo/reverseIteratorFrom$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/reverseIteratorFrom$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/reverseIteratorFrom$onNavigationEvent;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lo/reverseIteratorFrom$extraCallback$5;->extraCallback:Lo/reverseIteratorFrom$onNavigationEvent;

    invoke-direct {p0}, Lo/reverseIteratorFrom$onRelationshipValidationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/reverseIteratorFrom$extraCallback$5;->extraCallback:Lo/reverseIteratorFrom$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/reverseIteratorFrom$onNavigationEvent;->onMessageChannelReady(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p1

    return-object p1
.end method
