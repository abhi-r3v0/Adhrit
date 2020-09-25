.class public final Lo/setViewAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/os/Bundle;

.field private ICustomTabsCallback$Stub:Lo/WinLuckyNumberClaim;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/lang/String;

.field private asInterface:Z

.field private extraCallback:I

.field private extraCommand:Z

.field private getInterfaceDescriptor:Landroid/os/Bundle;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:J

.field private onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:I

.field private onTransact:Landroid/location/Location;

.field private postMessage:Ljava/lang/String;

.field private warmup:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/setViewAdapter;->onNavigationEvent:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lo/setViewAdapter;->extraCallback:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/setViewAdapter;->onPostMessage:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/setViewAdapter;->onMessageChannelReady:Z

    iput v0, p0, Lo/setViewAdapter;->onRelationshipValidationResult:I

    iput-boolean v1, p0, Lo/setViewAdapter;->asInterface:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setViewAdapter;->asBinder:Ljava/lang/String;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback$Stub:Lo/WinLuckyNumberClaim;

    iput-object v0, p0, Lo/setViewAdapter;->onTransact:Landroid/location/Location;

    iput-object v0, p0, Lo/setViewAdapter;->newSession:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lo/setViewAdapter;->getInterfaceDescriptor:Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lo/setViewAdapter;->warmup:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo/setViewAdapter;->ICustomTabsService:Ljava/util/List;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v0, p0, Lo/setViewAdapter;->postMessage:Ljava/lang/String;

    iput-boolean v1, p0, Lo/setViewAdapter;->extraCommand:Z

    return-void
.end method

.method public constructor <init>(Lo/setLastItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lo/setLastItem;->ICustomTabsCallback:J

    iput-wide v0, p0, Lo/setViewAdapter;->onNavigationEvent:J

    iget-object v0, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback:Landroid/os/Bundle;

    iget v0, p1, Lo/setLastItem;->onPostMessage:I

    iput v0, p0, Lo/setViewAdapter;->extraCallback:I

    iget-object v0, p1, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    iput-object v0, p0, Lo/setViewAdapter;->onPostMessage:Ljava/util/List;

    iget-boolean v0, p1, Lo/setLastItem;->onTransact:Z

    iput-boolean v0, p0, Lo/setViewAdapter;->onMessageChannelReady:Z

    iget v0, p1, Lo/setLastItem;->asBinder:I

    iput v0, p0, Lo/setViewAdapter;->onRelationshipValidationResult:I

    iget-boolean v0, p1, Lo/setLastItem;->onRelationshipValidationResult:Z

    iput-boolean v0, p0, Lo/setViewAdapter;->asInterface:Z

    iget-object v0, p1, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object v0, p0, Lo/setViewAdapter;->asBinder:Ljava/lang/String;

    iget-object v0, p1, Lo/setLastItem;->asInterface:Lo/WinLuckyNumberClaim;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback$Stub:Lo/WinLuckyNumberClaim;

    iget-object v0, p1, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    iput-object v0, p0, Lo/setViewAdapter;->onTransact:Landroid/location/Location;

    iget-object v0, p1, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    iput-object v0, p0, Lo/setViewAdapter;->newSession:Ljava/lang/String;

    iget-object v0, p1, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    iput-object v0, p0, Lo/setViewAdapter;->getInterfaceDescriptor:Landroid/os/Bundle;

    iget-object v0, p1, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    iput-object v0, p0, Lo/setViewAdapter;->warmup:Landroid/os/Bundle;

    iget-object v0, p1, Lo/setLastItem;->warmup:Ljava/util/List;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsService:Ljava/util/List;

    iget-object v0, p1, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    iput-object v0, p0, Lo/setViewAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iget-object p1, p1, Lo/setLastItem;->postMessage:Ljava/lang/String;

    iput-object p1, p0, Lo/setViewAdapter;->postMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setLastItem;
    .locals 22

    move-object/from16 v0, p0

    new-instance v21, Lo/setLastItem;

    move-object/from16 v1, v21

    iget-wide v3, v0, Lo/setViewAdapter;->onNavigationEvent:J

    iget-object v5, v0, Lo/setViewAdapter;->ICustomTabsCallback:Landroid/os/Bundle;

    iget v6, v0, Lo/setViewAdapter;->extraCallback:I

    iget-object v7, v0, Lo/setViewAdapter;->onPostMessage:Ljava/util/List;

    iget-boolean v8, v0, Lo/setViewAdapter;->onMessageChannelReady:Z

    iget v9, v0, Lo/setViewAdapter;->onRelationshipValidationResult:I

    iget-boolean v10, v0, Lo/setViewAdapter;->asInterface:Z

    iget-object v11, v0, Lo/setViewAdapter;->asBinder:Ljava/lang/String;

    iget-object v12, v0, Lo/setViewAdapter;->ICustomTabsCallback$Stub:Lo/WinLuckyNumberClaim;

    iget-object v13, v0, Lo/setViewAdapter;->onTransact:Landroid/location/Location;

    iget-object v14, v0, Lo/setViewAdapter;->newSession:Ljava/lang/String;

    iget-object v15, v0, Lo/setViewAdapter;->getInterfaceDescriptor:Landroid/os/Bundle;

    iget-object v2, v0, Lo/setViewAdapter;->warmup:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lo/setViewAdapter;->ICustomTabsService:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v0, Lo/setViewAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lo/setViewAdapter;->postMessage:Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x7

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lo/setLastItem;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lo/WinLuckyNumberClaim;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v21
.end method

.method public final onMessageChannelReady(Landroid/location/Location;)Lo/setViewAdapter;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lo/setViewAdapter;->onTransact:Landroid/location/Location;

    return-object p0
.end method
