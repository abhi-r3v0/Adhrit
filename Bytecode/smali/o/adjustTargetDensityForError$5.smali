.class final Lo/adjustTargetDensityForError$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adjustTargetDensityForError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/adjustTargetDensityForError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lo/adjustTargetDensityForError$5;->onMessageChannelReady(Landroid/os/Parcel;)Lo/adjustTargetDensityForError;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(I)[Lo/adjustTargetDensityForError;
    .locals 0

    .line 249
    new-array p1, p1, [Lo/adjustTargetDensityForError;

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lo/adjustTargetDensityForError$5;->extraCallback(I)[Lo/adjustTargetDensityForError;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/adjustTargetDensityForError;
    .locals 2

    .line 244
    new-instance v0, Lo/adjustTargetDensityForError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/adjustTargetDensityForError;-><init>(Landroid/os/Parcel;Lo/adjustTargetDensityForError$5;)V

    return-object v0
.end method
