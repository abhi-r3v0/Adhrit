.class public final Lo/WheelSlabJsonAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Ljava/util/Date;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private asBinder:Landroid/location/Location;

.field private final asInterface:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:I

.field private newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Landroid/os/Bundle;

.field private final onNavigationEvent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/os/Bundle;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:I

.field private warmup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->onPostMessage:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->extraCallback:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->onMessageChannelReady:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/WheelSlabJsonAdapter;->asInterface:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lo/WheelSlabJsonAdapter;->onTransact:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsService:Z

    iput v0, p0, Lo/WheelSlabJsonAdapter;->getInterfaceDescriptor:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/WheelSlabJsonAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsService:Z

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/WheelSlabJsonAdapter;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->onMessageChannelReady:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic ICustomTabsService(Lo/WheelSlabJsonAdapter;)I
    .locals 0

    iget p0, p0, Lo/WheelSlabJsonAdapter;->getInterfaceDescriptor:I

    return p0
.end method

.method static synthetic asBinder(Lo/WheelSlabJsonAdapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic asInterface(Lo/WheelSlabJsonAdapter;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->onPostMessage:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/WheelSlabJsonAdapter;)I
    .locals 0

    iget p0, p0, Lo/WheelSlabJsonAdapter;->onTransact:I

    return p0
.end method

.method static synthetic getInterfaceDescriptor(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->asInterface:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic newSession(Lo/WheelSlabJsonAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/WheelSlabJsonAdapter;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/WheelSlabJsonAdapter;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->asBinder:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->newSession:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onTransact(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->warmup:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic warmup(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lo/WheelSlabJsonAdapter;->extraCallback:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 0

    iput p1, p0, Lo/WheelSlabJsonAdapter;->onTransact:I

    return-void
.end method

.method public final extraCallback(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lo/WheelSlabJsonAdapter;->asBinder:Landroid/location/Location;

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/WheelSlabJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/Date;

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lo/Attributes;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lo/WheelSlabJsonAdapter;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/WheelSlabJsonAdapter;->extraCallback:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    iput p1, p0, Lo/WheelSlabJsonAdapter;->getInterfaceDescriptor:I

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/WheelSlabJsonAdapter;->extraCallback:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
