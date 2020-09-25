.class public final Lo/getOsFile$onNavigationEvent;
.super Lo/getOsFile$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOsFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getOsFile$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1219
    new-instance v0, Lo/getOsFile$onNavigationEvent;

    invoke-direct {v0}, Lo/getOsFile$onNavigationEvent;-><init>()V

    sput-object v0, Lo/getOsFile$onNavigationEvent;->onMessageChannelReady:Lo/getOsFile$onNavigationEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.whitespace()"

    .line 1222
    invoke-direct {p0, v0}, Lo/getOsFile$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    return-void
.end method
