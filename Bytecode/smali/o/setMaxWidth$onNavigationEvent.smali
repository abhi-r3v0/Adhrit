.class public final Lo/setMaxWidth$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMaxWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/LottieFetchTask;",
        "",
        "lottieTask",
        "Lcom/airbnb/lottie/LottieTask;",
        "Lcom/airbnb/lottie/LottieComposition;",
        "lottieListener",
        "Lcom/airbnb/lottie/LottieListener;",
        "lottieFailureListener",
        "",
        "(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieListener;Lcom/airbnb/lottie/LottieListener;)V",
        "cancelTask",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/createSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/createMultiAutoCompleteTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/createSeekBar;Lo/createMultiAutoCompleteTextView;Lo/createMultiAutoCompleteTextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createSeekBar<",
            "Lo/createCheckBox;",
            ">;",
            "Lo/createMultiAutoCompleteTextView<",
            "Lo/createCheckBox;",
            ">;",
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lottieTask"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lottieListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lottieFailureListener"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMaxWidth$onNavigationEvent;->ICustomTabsCallback:Lo/createSeekBar;

    iput-object p2, p0, Lo/setMaxWidth$onNavigationEvent;->extraCallback:Lo/createMultiAutoCompleteTextView;

    iput-object p3, p0, Lo/setMaxWidth$onNavigationEvent;->onMessageChannelReady:Lo/createMultiAutoCompleteTextView;

    return-void
.end method
