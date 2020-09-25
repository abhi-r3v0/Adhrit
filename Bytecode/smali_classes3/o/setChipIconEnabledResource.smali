.class public final Lo/setChipIconEnabledResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic extraCallback:Lo/setShowBuffering;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipIconEnabledResource;->ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lo/setChipIconEnabledResource;->extraCallback:Lo/setShowBuffering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setChipIconEnabledResource;->ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    iget-object v1, p0, Lo/setChipIconEnabledResource;->extraCallback:Lo/setShowBuffering;

    invoke-virtual {v0, v1}, Lo/setChipSpacingResource;->onPostMessage(Lo/setShowBuffering;)V

    return-void
.end method
