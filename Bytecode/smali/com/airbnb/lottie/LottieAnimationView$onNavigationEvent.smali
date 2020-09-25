.class final Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:I

.field extraCallback:Ljava/lang/String;

.field onMessageChannelReady:Z

.field onNavigationEvent:F

.field onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1152
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent$5;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent$5;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1132
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 1134
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onNavigationEvent:F

    .line 1135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onMessageChannelReady:Z

    .line 1136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 1137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onRelationshipValidationResult:I

    .line 1138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 1118
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1128
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1143
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1144
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1145
    iget p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onNavigationEvent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1146
    iget-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onMessageChannelReady:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1148
    iget p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->onRelationshipValidationResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    iget p2, p0, Lcom/airbnb/lottie/LottieAnimationView$onNavigationEvent;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
