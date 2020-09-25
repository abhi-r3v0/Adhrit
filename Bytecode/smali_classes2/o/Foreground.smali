.class final Lo/Foreground;
.super Lo/ServerConfigHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Foreground$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/addString;

.field private ICustomTabsCallback$Stub:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ag$2;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/OaidClient;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ak;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ae;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/addString;

.field private getInterfaceDescriptor:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ag;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/addString;

.field private onPostMessage:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/disk;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/addString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addString<",
            "Lo/ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    .line 64
    invoke-direct/range {p0 .. p0}, Lo/ServerConfigHandler;-><init>()V

    .line 2021
    sget-object v1, Lo/Foreground$4$5;->ICustomTabsCallback:Lo/Foreground$4$5;

    .line 1075
    invoke-static {v1}, Lo/removeUserWrite;->onNavigationEvent(Lo/addString;)Lo/addString;

    move-result-object v1

    iput-object v1, v0, Lo/Foreground;->onPostMessage:Lo/addString;

    .line 1076
    invoke-static/range {p1 .. p1}, Lo/saveWrite;->onMessageChannelReady(Ljava/lang/Object;)Lo/serverCache;

    move-result-object v1

    iput-object v1, v0, Lo/Foreground;->onMessageChannelReady:Lo/addString;

    .line 3020
    sget-object v2, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

    .line 4020
    sget-object v3, Lo/d;->onNavigationEvent:Lo/d;

    .line 4034
    new-instance v4, Lo/query;

    invoke-direct {v4, v1, v2, v3}, Lo/query;-><init>(Lo/addString;Lo/addString;Lo/addString;)V

    .line 1077
    iput-object v4, v0, Lo/Foreground;->ICustomTabsCallback:Lo/addString;

    .line 1078
    iget-object v1, v0, Lo/Foreground;->onMessageChannelReady:Lo/addString;

    .line 5030
    new-instance v2, Lo/valid;

    invoke-direct {v2, v1, v4}, Lo/valid;-><init>(Lo/addString;Lo/addString;)V

    .line 1078
    invoke-static {v2}, Lo/removeUserWrite;->onNavigationEvent(Lo/addString;)Lo/addString;

    move-result-object v1

    iput-object v1, v0, Lo/Foreground;->onNavigationEvent:Lo/addString;

    .line 1079
    iget-object v1, v0, Lo/Foreground;->onMessageChannelReady:Lo/addString;

    .line 6020
    sget-object v2, Lo/al;->onNavigationEvent:Lo/al;

    .line 7019
    sget-object v3, Lo/skip;->onNavigationEvent:Lo/skip;

    .line 7033
    new-instance v4, Lo/b$d;

    invoke-direct {v4, v1, v2, v3}, Lo/b$d;-><init>(Lo/addString;Lo/addString;Lo/addString;)V

    .line 1079
    iput-object v4, v0, Lo/Foreground;->extraCallback:Lo/addString;

    .line 8020
    sget-object v1, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

    .line 9020
    sget-object v2, Lo/d;->onNavigationEvent:Lo/d;

    .line 10020
    sget-object v3, Lo/available;->onPostMessage:Lo/available;

    .line 1080
    iget-object v4, v0, Lo/Foreground;->extraCallback:Lo/addString;

    .line 10037
    new-instance v5, Lo/an;

    invoke-direct {v5, v1, v2, v3, v4}, Lo/an;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1080
    invoke-static {v5}, Lo/removeUserWrite;->onNavigationEvent(Lo/addString;)Lo/addString;

    move-result-object v1

    iput-object v1, v0, Lo/Foreground;->asBinder:Lo/addString;

    .line 11020
    sget-object v1, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

    .line 11027
    new-instance v2, Lo/a$d;

    invoke-direct {v2, v1}, Lo/a$d;-><init>(Lo/addString;)V

    .line 1081
    iput-object v2, v0, Lo/Foreground;->ICustomTabsCallback$Stub:Lo/addString;

    .line 1082
    iget-object v1, v0, Lo/Foreground;->onMessageChannelReady:Lo/addString;

    iget-object v3, v0, Lo/Foreground;->asBinder:Lo/addString;

    .line 12020
    sget-object v4, Lo/d;->onNavigationEvent:Lo/d;

    .line 12043
    new-instance v8, Lo/a$e;

    invoke-direct {v8, v1, v3, v2, v4}, Lo/a$e;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1082
    iput-object v8, v0, Lo/Foreground;->onTransact:Lo/addString;

    .line 1083
    iget-object v6, v0, Lo/Foreground;->onPostMessage:Lo/addString;

    iget-object v7, v0, Lo/Foreground;->onNavigationEvent:Lo/addString;

    iget-object v10, v0, Lo/Foreground;->asBinder:Lo/addString;

    .line 12047
    new-instance v1, Lo/bootTime;

    move-object v5, v1

    move-object v9, v10

    invoke-direct/range {v5 .. v10}, Lo/bootTime;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1083
    iput-object v1, v0, Lo/Foreground;->onRelationshipValidationResult:Lo/addString;

    .line 1084
    iget-object v12, v0, Lo/Foreground;->onMessageChannelReady:Lo/addString;

    iget-object v13, v0, Lo/Foreground;->onNavigationEvent:Lo/addString;

    iget-object v1, v0, Lo/Foreground;->asBinder:Lo/addString;

    iget-object v15, v0, Lo/Foreground;->onTransact:Lo/addString;

    iget-object v2, v0, Lo/Foreground;->onPostMessage:Lo/addString;

    .line 13020
    sget-object v18, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

    .line 13054
    new-instance v3, Lo/af;

    move-object v11, v3

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Lo/af;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1084
    iput-object v3, v0, Lo/Foreground;->asInterface:Lo/addString;

    .line 1085
    iget-object v1, v0, Lo/Foreground;->onPostMessage:Lo/addString;

    iget-object v2, v0, Lo/Foreground;->asBinder:Lo/addString;

    iget-object v3, v0, Lo/Foreground;->onTransact:Lo/addString;

    .line 14040
    new-instance v4, Lo/ag$a;

    invoke-direct {v4, v1, v2, v3, v2}, Lo/ag$a;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1085
    iput-object v4, v0, Lo/Foreground;->getInterfaceDescriptor:Lo/addString;

    .line 15020
    sget-object v6, Lo/c$a$c;->onPostMessage:Lo/c$a$c;

    .line 16020
    sget-object v7, Lo/d;->onNavigationEvent:Lo/d;

    .line 1086
    iget-object v8, v0, Lo/Foreground;->onRelationshipValidationResult:Lo/addString;

    iget-object v9, v0, Lo/Foreground;->asInterface:Lo/addString;

    iget-object v10, v0, Lo/Foreground;->getInterfaceDescriptor:Lo/addString;

    .line 16044
    new-instance v1, Lo/R$xml;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lo/R$xml;-><init>(Lo/addString;Lo/addString;Lo/addString;Lo/addString;Lo/addString;)V

    .line 1086
    invoke-static {v1}, Lo/removeUserWrite;->onNavigationEvent(Lo/addString;)Lo/addString;

    move-result-object v1

    iput-object v1, v0, Lo/Foreground;->ICustomTabsCallback$Stub$Proxy:Lo/addString;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/Foreground;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final extraCallback()Lo/OaidClient;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/Foreground;->ICustomTabsCallback$Stub$Proxy:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OaidClient;

    return-object v0
.end method

.method final onPostMessage()Lo/ah;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/Foreground;->asBinder:Lo/addString;

    invoke-interface {v0}, Lo/addString;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ah;

    return-object v0
.end method
