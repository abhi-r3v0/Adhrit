.class public final Lo/setHelperText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/setShowBuffering;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setHelperText;->extraCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lo/setHelperText;->onPostMessage:Lo/setShowBuffering;

    iput-object p3, p0, Lo/setHelperText;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/setHelperText;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setHelperText;->extraCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 3
    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    iget-object v1, p0, Lo/setHelperText;->onPostMessage:Lo/setShowBuffering;

    iget-object v2, p0, Lo/setHelperText;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/setHelperText;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
