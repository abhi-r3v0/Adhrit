.class public final Lo/removeValue$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/updateChildren;

.field public asBinder:Lo/getRef$ICustomTabsCallback;

.field public asInterface:Lo/removeValue;

.field public extraCallback:Lo/fromException;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lo/toException;

.field public onPostMessage:Lo/getChildren;

.field public onRelationshipValidationResult:Lo/removeValue;

.field public onTransact:Lo/removeValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 234
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    iput-object v0, p0, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Lo/removeValue;)V
    .locals 3

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 1036
    iget-object v0, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 238
    iput-object v0, p0, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 2036
    iget-object v0, p1, Lo/removeValue;->onMessageChannelReady:Lo/toException;

    .line 239
    iput-object v0, p0, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 3036
    iget v0, p1, Lo/removeValue;->ICustomTabsCallback:I

    .line 240
    iput v0, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 4036
    iget-object v0, p1, Lo/removeValue;->onNavigationEvent:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 5036
    iget-object v0, p1, Lo/removeValue;->onPostMessage:Lo/getChildren;

    .line 242
    iput-object v0, p0, Lo/removeValue$onPostMessage;->onPostMessage:Lo/getChildren;

    .line 6036
    iget-object v0, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 6121
    new-instance v1, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 6214
    iget-object v2, v1, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 6122
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 243
    iput-object v1, p0, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 7036
    iget-object v0, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 244
    iput-object v0, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 8036
    iget-object v0, p1, Lo/removeValue;->asBinder:Lo/removeValue;

    .line 245
    iput-object v0, p0, Lo/removeValue$onPostMessage;->onTransact:Lo/removeValue;

    .line 9036
    iget-object v0, p1, Lo/removeValue;->ICustomTabsCallback$Stub:Lo/removeValue;

    .line 246
    iput-object v0, p0, Lo/removeValue$onPostMessage;->asInterface:Lo/removeValue;

    .line 10036
    iget-object p1, p1, Lo/removeValue;->onTransact:Lo/removeValue;

    .line 247
    iput-object p1, p0, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    return-void
.end method

.method public synthetic constructor <init>(Lo/removeValue;B)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;)V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Lo/removeValue;)V
    .locals 1

    .line 11036
    iget-object v0, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v0, :cond_3

    .line 12036
    iget-object v0, p1, Lo/removeValue;->asBinder:Lo/removeValue;

    if-nez v0, :cond_2

    .line 13036
    iget-object v0, p1, Lo/removeValue;->ICustomTabsCallback$Stub:Lo/removeValue;

    if-nez v0, :cond_1

    .line 14036
    iget-object p1, p1, Lo/removeValue;->onTransact:Lo/removeValue;

    if-nez p1, :cond_0

    return-void

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".priorResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cacheResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".networkResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".body != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Lo/removeValue;
    .locals 3

    .line 346
    iget-object v0, p0, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    if-eqz v0, :cond_1

    .line 348
    iget v0, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    if-ltz v0, :cond_0

    .line 349
    new-instance v0, Lo/removeValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/removeValue;-><init>(Lo/removeValue$onPostMessage;B)V

    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/removeValue$onPostMessage;
    .locals 1

    .line 289
    iget-object v0, p0, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    return-object p0
.end method
