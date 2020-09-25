.class public final Lo/setTextInputAccessibilityDelegate;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setTextInputAccessibilityDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:[Lo/setEndIconDrawable;

.field private final extraCallback:Z

.field public final onMessageChannelReady:I

.field public final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/shouldInflateAppCompatButton;

    invoke-direct {v0}, Lo/shouldInflateAppCompatButton;-><init>()V

    sput-object v0, Lo/setTextInputAccessibilityDelegate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[Lo/setEndIconDrawable;IZ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-wide p1, p0, Lo/setTextInputAccessibilityDelegate;->onPostMessage:J

    iput-object p3, p0, Lo/setTextInputAccessibilityDelegate;->ICustomTabsCallback:[Lo/setEndIconDrawable;

    iput-boolean p5, p0, Lo/setTextInputAccessibilityDelegate;->extraCallback:Z

    if-eqz p5, :cond_0

    iput p4, p0, Lo/setTextInputAccessibilityDelegate;->onMessageChannelReady:I

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lo/setTextInputAccessibilityDelegate;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-wide v1, p0, Lo/setTextInputAccessibilityDelegate;->onPostMessage:J

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lo/setTextInputAccessibilityDelegate;->ICustomTabsCallback:[Lo/setEndIconDrawable;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget p2, p0, Lo/setTextInputAccessibilityDelegate;->onMessageChannelReady:I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lo/setTextInputAccessibilityDelegate;->extraCallback:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
