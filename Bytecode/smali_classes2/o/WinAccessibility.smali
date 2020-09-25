.class public final Lo/WinAccessibility;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:Landroid/os/Bundle;

.field private final asBinder:Landroid/os/Bundle;

.field private final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Z

.field private final newSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/Date;

.field private final onNavigationEvent:Landroid/location/Location;

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Z

.field private final warmup:Lo/extraCallback$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/WheelSlabJsonAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/WinAccessibility;-><init>(Lo/WheelSlabJsonAdapter;Lo/extraCallback$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Lo/WheelSlabJsonAdapter;Lo/extraCallback$onNavigationEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->onMessageChannelReady(Lo/WheelSlabJsonAdapter;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->onMessageChannelReady:Ljava/util/Date;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->extraCallback(Lo/WheelSlabJsonAdapter;)I

    move-result v0

    iput v0, p0, Lo/WinAccessibility;->onPostMessage:I

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->onNavigationEvent(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->extraCallback:Ljava/util/Set;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->onPostMessage(Lo/WheelSlabJsonAdapter;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->onNavigationEvent:Landroid/location/Location;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub(Lo/WheelSlabJsonAdapter;)Z

    move-result v0

    iput-boolean v0, p0, Lo/WinAccessibility;->onTransact:Z

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->asInterface(Lo/WheelSlabJsonAdapter;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->asBinder:Landroid/os/Bundle;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->asBinder(Lo/WheelSlabJsonAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->asInterface:Ljava/util/Map;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->onTransact(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->onRelationshipValidationResult(Lo/WheelSlabJsonAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/WinAccessibility;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p2, p0, Lo/WinAccessibility;->warmup:Lo/extraCallback$onNavigationEvent;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->ICustomTabsService(Lo/WheelSlabJsonAdapter;)I

    move-result p2

    iput p2, p0, Lo/WinAccessibility;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->warmup(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/WinAccessibility;->newSession:Ljava/util/Set;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback$Stub$Proxy(Lo/WheelSlabJsonAdapter;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lo/WinAccessibility;->ICustomTabsService:Landroid/os/Bundle;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->getInterfaceDescriptor(Lo/WheelSlabJsonAdapter;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lo/WinAccessibility;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-static {p1}, Lo/WheelSlabJsonAdapter;->newSession(Lo/WheelSlabJsonAdapter;)Z

    move-result p1

    iput-boolean p1, p0, Lo/WinAccessibility;->mayLaunchUrl:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->onMessageChannelReady:Ljava/util/Date;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinAccessibility;->getInterfaceDescriptor:Ljava/util/Set;

    return-object v0
.end method

.method public final ICustomTabsService()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->ICustomTabsService:Landroid/os/Bundle;

    return-object v0
.end method

.method public final asBinder()Lo/extraCallback$onNavigationEvent;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->warmup:Lo/extraCallback$onNavigationEvent;

    return-object v0
.end method

.method public final asInterface()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinAccessibility;->asInterface:Ljava/util/Map;

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    iget v0, p0, Lo/WinAccessibility;->onPostMessage:I

    return v0
.end method

.method public final extraCallback(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->newSession:Ljava/util/Set;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p1}, Lo/ControlStatementRepo$TransactionItem;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getInterfaceDescriptor()Z
    .locals 1

    iget-boolean v0, p0, Lo/WinAccessibility;->mayLaunchUrl:Z

    return v0
.end method

.method public final newSession()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->asBinder:Landroid/os/Bundle;

    return-object v0
.end method

.method public final onMessageChannelReady()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->onNavigationEvent:Landroid/location/Location;

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lo/Attributes;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinAccessibility;->asBinder:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinAccessibility;->extraCallback:Ljava/util/Set;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    iget-boolean v0, p0, Lo/WinAccessibility;->onTransact:Z

    return v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WinAccessibility;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method public final warmup()I
    .locals 1

    iget v0, p0, Lo/WinAccessibility;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method
