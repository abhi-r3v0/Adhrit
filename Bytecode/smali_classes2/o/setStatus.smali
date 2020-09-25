.class public final Lo/setStatus;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:Z

.field public final asBinder:Z

.field public final asInterface:Z

.field public final extraCallback:Z

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:F

.field private final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getMessage;

    invoke-direct {v0}, Lo/getMessage;-><init>()V

    sput-object v0, Lo/setStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFIZZZ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/setStatus;->onNavigationEvent:Z

    iput-boolean p2, p0, Lo/setStatus;->extraCallback:Z

    iput-object p3, p0, Lo/setStatus;->onRelationshipValidationResult:Ljava/lang/String;

    iput-boolean p4, p0, Lo/setStatus;->ICustomTabsCallback:Z

    iput p5, p0, Lo/setStatus;->onPostMessage:F

    iput p6, p0, Lo/setStatus;->onMessageChannelReady:I

    iput-boolean p7, p0, Lo/setStatus;->ICustomTabsCallback$Stub:Z

    iput-boolean p8, p0, Lo/setStatus;->asBinder:Z

    iput-boolean p9, p0, Lo/setStatus;->asInterface:Z

    return-void
.end method

.method public constructor <init>(ZZZFIZZZ)V
    .locals 10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lo/setStatus;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lo/setStatus;->onNavigationEvent:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lo/setStatus;->extraCallback:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lo/setStatus;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lo/setStatus;->ICustomTabsCallback:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lo/setStatus;->onPostMessage:F

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;IF)V

    iget v0, p0, Lo/setStatus;->onMessageChannelReady:I

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lo/setStatus;->ICustomTabsCallback$Stub:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lo/setStatus;->asBinder:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lo/setStatus;->asInterface:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
