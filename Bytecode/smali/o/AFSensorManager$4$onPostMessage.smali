.class public final Lo/AFSensorManager$4$onPostMessage;
.super Lo/AFVersionDeclaration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AFSensorManager$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lo/AFVersionDeclaration;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub(I)Lo/afInfoLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afInfoLog<",
            "[B>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lo/onConversionDataSuccess;

    .line 73
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v1, v1, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    invoke-direct {v0, p1, v1}, Lo/onConversionDataSuccess;-><init>(II)V

    return-object v0
.end method
