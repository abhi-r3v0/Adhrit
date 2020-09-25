.class public final Lo/getPaymentData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentData$extraCallback;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4000
    new-instance v0, Lo/getPaymentData;

    invoke-direct {v0}, Lo/getPaymentData;-><init>()V

    sput-object v0, Lo/getPaymentData;->onMessageChannelReady:Lo/optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)Lo/getPaymentData$extraCallback;
    .locals 2

    .line 3
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    return-object v0
.end method

.method public static varargs onPostMessage([Ljava/lang/Object;)I
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final extraCallback(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    .line 3000
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/addDependent;

    if-eqz v1, :cond_1

    check-cast v0, Lo/addDependent;

    return-object v0

    :cond_1
    new-instance v0, Lo/setCrashlyticsCollectionEnabled;

    invoke-direct {v0, p1}, Lo/setCrashlyticsCollectionEnabled;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
