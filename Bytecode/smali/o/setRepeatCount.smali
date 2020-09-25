.class public Lo/setRepeatCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loop;


# static fields
.field private static final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lo/setRepeatCount;

    sput-object v0, Lo/setRepeatCount;->onNavigationEvent:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 25
    invoke-direct {p0, v0}, Lo/setRepeatCount;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lo/setRepeatCount;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getRepeatCount;Lo/addAnimatorListener;Lo/reverseAnimationSpeed;I)V
    .locals 6

    const/4 v0, 0x1

    .line 38
    :goto_0
    iget v1, p0, Lo/setRepeatCount;->onMessageChannelReady:I

    if-gt v0, v1, :cond_1

    add-int v1, p4, v0

    .line 39
    invoke-interface {p3}, Lo/reverseAnimationSpeed;->extraCallback()I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x2

    .line 40
    invoke-static {v2}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    sget-object v2, Lo/setRepeatCount;->onNavigationEvent:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Preparing frame %d, last drawn: %d"

    invoke-static {v2, v5, v3, v4}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-interface {p1, p2, p3, v1}, Lo/getRepeatCount;->ICustomTabsCallback(Lo/addAnimatorListener;Lo/reverseAnimationSpeed;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
