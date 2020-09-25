.class final Lo/setOnCustomRenderedAdLoadedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildClient;


# static fields
.field static final onNavigationEvent:Lo/buildClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/setOnCustomRenderedAdLoadedListener;

    invoke-direct {v0}, Lo/setOnCustomRenderedAdLoadedListener;-><init>()V

    sput-object v0, Lo/setOnCustomRenderedAdLoadedListener;->onNavigationEvent:Lo/buildClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lo/setAdSize$asBinder$onNavigationEvent;->onNavigationEvent(I)Lo/setAdSize$asBinder$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
