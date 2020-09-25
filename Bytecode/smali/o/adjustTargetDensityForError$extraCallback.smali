.class public final Lo/adjustTargetDensityForError$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adjustTargetDensityForError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final onMessageChannelReady:I

.field public final onNavigationEvent:J

.field public final onPostMessage:J


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lo/adjustTargetDensityForError$extraCallback;->onMessageChannelReady:I

    .line 200
    iput-wide p2, p0, Lo/adjustTargetDensityForError$extraCallback;->onPostMessage:J

    .line 201
    iput-wide p4, p0, Lo/adjustTargetDensityForError$extraCallback;->onNavigationEvent:J

    return-void
.end method

.method synthetic constructor <init>(IJJLo/adjustTargetDensityForError$5;)V
    .locals 0

    .line 191
    invoke-direct/range {p0 .. p5}, Lo/adjustTargetDensityForError$extraCallback;-><init>(IJJ)V

    return-void
.end method

.method public static onPostMessage(Landroid/os/Parcel;)Lo/adjustTargetDensityForError$extraCallback;
    .locals 7

    .line 211
    new-instance v6, Lo/adjustTargetDensityForError$extraCallback;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/adjustTargetDensityForError$extraCallback;-><init>(IJJ)V

    return-object v6
.end method


# virtual methods
.method public final extraCallback(Landroid/os/Parcel;)V
    .locals 2

    .line 205
    iget v0, p0, Lo/adjustTargetDensityForError$extraCallback;->onMessageChannelReady:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-wide v0, p0, Lo/adjustTargetDensityForError$extraCallback;->onPostMessage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-wide v0, p0, Lo/adjustTargetDensityForError$extraCallback;->onNavigationEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
