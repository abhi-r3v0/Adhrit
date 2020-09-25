.class public final Lo/getNoTncCheck;
.super Lo/getTags;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getNoTncCheck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/getFarmDescription;

    invoke-direct {v0}, Lo/getFarmDescription;-><init>()V

    sput-object v0, Lo/getNoTncCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/getNoTncCheck;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 5
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 6
    iget v0, p0, Lo/getNoTncCheck;->onPostMessage:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
