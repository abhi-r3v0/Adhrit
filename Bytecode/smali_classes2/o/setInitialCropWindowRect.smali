.class final Lo/setInitialCropWindowRect;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final synthetic onNavigationEvent:Lo/setInitialAttributeValues;


# direct methods
.method constructor <init>(Lo/setInitialAttributeValues;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lo/setInitialCropWindowRect;->onNavigationEvent:Lo/setInitialAttributeValues;

    iput-object p2, p0, Lo/setInitialCropWindowRect;->ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/setInitialCropWindowRect;->onNavigationEvent:Lo/setInitialAttributeValues;

    invoke-static {v0}, Lo/setInitialAttributeValues;->ICustomTabsCallback(Lo/setInitialAttributeValues;)Lo/setOnCropWindowChangedListener;

    move-result-object v0

    iget-object v1, p0, Lo/setInitialCropWindowRect;->ICustomTabsCallback:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-interface {v0, v1}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
