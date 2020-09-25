.class public final Lo/ShortCircuitInfo$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ShortCircuitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/p$a;

.field public final onNavigationEvent:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lo/ShortCircuitInfo$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    .line 153
    iput-object p2, p0, Lo/ShortCircuitInfo$extraCallback;->onMessageChannelReady:Lo/p$a;

    .line 154
    iput-object p3, p0, Lo/ShortCircuitInfo$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lo/ShortCircuitInfo$extraCallback;->extraCallback:Ljava/lang/String;

    return-void
.end method
