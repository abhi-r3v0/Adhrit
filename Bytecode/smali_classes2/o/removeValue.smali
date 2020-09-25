.class public final Lo/removeValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeValue$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/removeValue;

.field public asBinder:Lo/removeValue;

.field public final asInterface:Lo/getRef;

.field public final extraCallback:Lo/fromException;

.field public volatile newSession:Lo/onChildRemoved;

.field final onMessageChannelReady:Lo/toException;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lo/getChildren;

.field public final onRelationshipValidationResult:Lo/updateChildren;

.field final onTransact:Lo/removeValue;


# direct methods
.method private constructor <init>(Lo/removeValue$onPostMessage;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 51
    iput-object v0, p0, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 2221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 52
    iput-object v0, p0, Lo/removeValue;->onMessageChannelReady:Lo/toException;

    .line 3221
    iget v0, p1, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 53
    iput v0, p0, Lo/removeValue;->ICustomTabsCallback:I

    .line 4221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lo/removeValue;->onNavigationEvent:Ljava/lang/String;

    .line 5221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->onPostMessage:Lo/getChildren;

    .line 55
    iput-object v0, p0, Lo/removeValue;->onPostMessage:Lo/getChildren;

    .line 6221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 6312
    new-instance v1, Lo/getRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 56
    iput-object v1, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 7221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 57
    iput-object v0, p0, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 8221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->onTransact:Lo/removeValue;

    .line 58
    iput-object v0, p0, Lo/removeValue;->asBinder:Lo/removeValue;

    .line 9221
    iget-object v0, p1, Lo/removeValue$onPostMessage;->asInterface:Lo/removeValue;

    .line 59
    iput-object v0, p0, Lo/removeValue;->ICustomTabsCallback$Stub:Lo/removeValue;

    .line 10221
    iget-object p1, p1, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    .line 60
    iput-object p1, p0, Lo/removeValue;->onTransact:Lo/removeValue;

    return-void
.end method

.method synthetic constructor <init>(Lo/removeValue$onPostMessage;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/removeValue;-><init>(Lo/removeValue$onPostMessage;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/hasChildren;",
            ">;"
        }
    .end annotation

    .line 190
    iget v0, p0, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 11126
    :goto_0
    iget-object v1, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 197
    invoke-static {v1, v0}, Lo/removeEventRegistration;->onNavigationEvent(Lo/getRef;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/removeValue;->onMessageChannelReady:Lo/toException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/removeValue;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/removeValue;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 12066
    iget-object v1, v1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
