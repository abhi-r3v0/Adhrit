.class final Lo/bQ$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/bR;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/bQ$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/bL;
    .locals 1

    .line 2
    new-instance v0, Lo/bO;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/bO;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
