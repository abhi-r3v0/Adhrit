.class final Lo/setCompatPressedTranslationZ;
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
    iput-object p1, p0, Lo/setCompatPressedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setCompatPressedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v0, v0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/setChipSpacingResource;->ICustomTabsCallback(Lo/setChipSpacingResource;Lo/setStatusBarForeground;)Lo/setStatusBarForeground;

    .line 3
    iget-object v0, p0, Lo/setCompatPressedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v0, v0, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Lo/setChipSpacingResource;)V

    return-void
.end method
