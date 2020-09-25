.class public final Lo/ShortCircuitInfo$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ShortCircuitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/p$a;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    .line 90
    iput-object p2, p0, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    .line 91
    iput-object p3, p0, Lo/ShortCircuitInfo$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lo/ShortCircuitInfo$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lo/ShortCircuitInfo$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lo/ShortCircuitInfo$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public static onNavigationEvent(Landroid/net/Uri;)Lo/ShortCircuitInfo$onNavigationEvent;
    .locals 16

    const-string v0, "0"

    const/4 v1, 0x0

    const-string v2, "application/x-mpegURL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 105
    invoke-static/range {v0 .. v8}, Lo/p$a;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lo/p$a;

    move-result-object v11

    .line 115
    new-instance v0, Lo/ShortCircuitInfo$onNavigationEvent;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lo/ShortCircuitInfo$onNavigationEvent;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lo/p$a;)Lo/ShortCircuitInfo$onNavigationEvent;
    .locals 8

    .line 126
    new-instance v7, Lo/ShortCircuitInfo$onNavigationEvent;

    iget-object v1, p0, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    iget-object v3, p0, Lo/ShortCircuitInfo$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/ShortCircuitInfo$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/ShortCircuitInfo$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v6, p0, Lo/ShortCircuitInfo$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lo/ShortCircuitInfo$onNavigationEvent;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
