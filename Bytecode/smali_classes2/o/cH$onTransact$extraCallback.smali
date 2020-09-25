.class public final Lo/cH$onTransact$extraCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$onTransact;",
        "Lo/cH$onTransact$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$onTransact;->onConnected()Lo/cH$onTransact;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/cH$onTransact$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->ICustomTabsCallback$Stub()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 79
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final ICustomTabsCallback(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 105
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$extraCallback;",
            ">;)",
            "Lo/cH$onTransact$extraCallback;"
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 263
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 144
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Lo/cH$ICustomTabsCallback$Stub$onPostMessage;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 332
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 335
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$ICustomTabsCallback$Stub;

    invoke-static {v0, p1}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;Lo/cH$ICustomTabsCallback$Stub;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Z)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 254
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 257
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;Z)V

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 320
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 323
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onRelationshipValidationResult(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 175
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 178
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onRelationshipValidationResult(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 163
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->asInterface(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 193
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 248
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 251
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub$Proxy(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ICustomTabsService()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 217
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 220
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->asInterface(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final ICustomTabsService(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 350
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 353
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->newSession(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final ICustomTabsService(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 284
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 287
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->newSession(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final asBinder()J
    .locals 2

    .line 94
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->warmup()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asBinder(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 150
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 153
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final asBinder(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 296
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 299
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onTransact(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final asBinder(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 169
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 172
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->asBinder(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final asInterface()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 108
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final asInterface(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 223
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 226
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->asBinder(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final asInterface(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 235
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 238
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$newSession;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    .line 47
    invoke-virtual {v0}, Lo/cH$onTransact;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final extraCallback(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 89
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 92
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Lo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;Lo/cH$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final extraCallback(Lo/cH$newSession$onPostMessage;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 67
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$newSession;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;Lo/cH$newSession;)V

    return-object p0
.end method

.method public final extraCallback(Lo/cH$newSession;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 58
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;Lo/cH$newSession;)V

    return-object p0
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->MediaBrowserCompat$ConnectionCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCommand(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 357
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 360
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->postMessage(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInterfaceDescriptor()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 244
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->asBinder(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final getInterfaceDescriptor(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 344
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 347
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback$Stub$Proxy(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final getInterfaceDescriptor(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 308
    iget-boolean p1, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 311
    :cond_0
    iget-object p1, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast p1, Lo/cH$onTransact;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/cH$onTransact;->getInterfaceDescriptor(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->RemoteActionCompatParcelizer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newSession(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 326
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 329
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->warmup(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 12
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0, p1}, Lo/cH$onTransact;->onMessageChannelReady(I)Lo/cH$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(ILo/cH$ICustomTabsCallback$onNavigationEvent;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 18
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    .line 19
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cH$ICustomTabsCallback;

    .line 20
    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;ILo/cH$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final onMessageChannelReady(ILo/cH$newSession;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 52
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;ILo/cH$newSession;)V

    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 114
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 117
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$ICustomTabsCallback;",
            ">;)",
            "Lo/cH$onTransact$extraCallback;"
        }
    .end annotation

    .line 29
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 32
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Z)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 199
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;Z)V

    return-object p0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    .line 10
    invoke-virtual {v0}, Lo/cH$onTransact;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 4
    iget-boolean p1, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 7
    :cond_0
    iget-object p1, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast p1, Lo/cH$onTransact;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lo/cH$onTransact$extraCallback;"
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 341
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 156
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 159
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->extraCallback(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(I)Lo/cH$newSession;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0, p1}, Lo/cH$onTransact;->onNavigationEvent(I)Lo/cH$newSession;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final onPostMessage(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 96
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 99
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/cH$onTransact$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$newSession;",
            ">;)",
            "Lo/cH$onTransact$extraCallback;"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback(Lo/cH$onTransact;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 132
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 135
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onRelationshipValidationResult()J
    .locals 2

    .line 87
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-virtual {v0}, Lo/cH$onTransact;->asInterface()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onRelationshipValidationResult(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 229
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onMessageChannelReady(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final onRelationshipValidationResult(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 302
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 305
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->asInterface(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final onRelationshipValidationResult(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 211
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 214
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onTransact(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onTransact()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 120
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 123
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->onNavigationEvent(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final onTransact(I)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 278
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 281
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(Lo/cH$onTransact;I)V

    return-object p0
.end method

.method public final onTransact(J)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 181
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1, p2}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(Lo/cH$onTransact;J)V

    return-object p0
.end method

.method public final onTransact(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 190
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->onRelationshipValidationResult(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final postMessage()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 290
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 293
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->onRelationshipValidationResult(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final requestPostMessageChannel()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 314
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 317
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->onTransact(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final requestPostMessageChannel(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 363
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 366
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->mayLaunchUrl(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method

.method public final updateVisuals()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 266
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 269
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->ICustomTabsCallback$Stub(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final warmup()Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 205
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 208
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0}, Lo/cH$onTransact;->onPostMessage(Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final warmup(Ljava/lang/String;)Lo/cH$onTransact$extraCallback;
    .locals 1

    .line 272
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 275
    :cond_0
    iget-object v0, p0, Lo/cH$onTransact$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onTransact;->ICustomTabsService(Lo/cH$onTransact;Ljava/lang/String;)V

    return-object p0
.end method
