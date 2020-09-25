.class public abstract Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;
    .annotation runtime Lo/AssetsResponse;
    .end annotation
.end field

.field public static final extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;
    .annotation runtime Lo/AssetsResponse;
    .end annotation
.end field

.field public static final onPostMessage:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;
    .annotation runtime Lo/AssetsResponse;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1;-><init>()V

    sput-object v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;

    new-instance v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1$lambda$1$1;

    invoke-direct {v0}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1$lambda$1$1;-><init>()V

    sput-object v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;->ICustomTabsCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;

    new-instance v0, Lo/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;-><init>()V

    sput-object v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;->onPostMessage:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
