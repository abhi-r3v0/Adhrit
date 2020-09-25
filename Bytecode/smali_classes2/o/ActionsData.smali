.class public final Lo/ActionsData;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/ActionsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AmountScreenResponse$$Parcelable;

    invoke-direct {v0}, Lo/AmountScreenResponse$$Parcelable;-><init>()V

    sput-object v0, Lo/ActionsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/ActionsData;->onPostMessage:I

    iput-object p2, p0, Lo/ActionsData;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/ActionsData;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lo/ActionsData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/ActionsData;->onPostMessage:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lo/ActionsData;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lo/ActionsData;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
