.class public final Lo/StatementResponse_WaiverJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/StatementResponse_WaiverJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Landroid/content/Intent;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LifeCycleObserverToEvent;

    invoke-direct {v0}, Lo/LifeCycleObserverToEvent;-><init>()V

    sput-object v0, Lo/StatementResponse_WaiverJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onTransact:Ljava/lang/String;

    iput-object p2, p0, Lo/StatementResponse_WaiverJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/StatementResponse_WaiverJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/StatementResponse_WaiverJsonAdapter;->onPostMessage:Ljava/lang/String;

    iput-object p5, p0, Lo/StatementResponse_WaiverJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-object p6, p0, Lo/StatementResponse_WaiverJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    iput-object p7, p0, Lo/StatementResponse_WaiverJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p8, p0, Lo/StatementResponse_WaiverJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onTransact:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/StatementResponse_WaiverJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Intent;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
