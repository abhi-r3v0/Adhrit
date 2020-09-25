.class public final Lo/showForSystem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createRadioButton;


# static fields
.field private static final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lo/showForSystem;->extraCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 1038
    sget-object v0, Lo/showForSystem;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "LOTTIE"

    .line 1042
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    sget-object v0, Lo/showForSystem;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 38
    sget-object v0, Lo/showForSystem;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LOTTIE"

    .line 42
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    sget-object p2, Lo/showForSystem;->extraCallback:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    .line 1028
    sget-boolean p1, Lo/createEditText;->onNavigationEvent:Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 48
    sget-boolean v0, Lo/createEditText;->onNavigationEvent:Z

    return-void
.end method
