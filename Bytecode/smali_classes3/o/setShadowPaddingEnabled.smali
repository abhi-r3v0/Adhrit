.class final Lo/setShadowPaddingEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setCompatPressedTranslationZResource;


# direct methods
.method constructor <init>(Lo/setCompatPressedTranslationZResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setShadowPaddingEnabled;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setShadowPaddingEnabled;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v0, v0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lo/setShadowPaddingEnabled;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v2, v2, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    .line 3
    invoke-virtual {v2}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 4
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Lo/setChipSpacingResource;->ICustomTabsCallback(Lo/setChipSpacingResource;Landroid/content/ComponentName;)V

    return-void
.end method
