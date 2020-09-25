.class public final Lo/willRunSimpleAnimations$onPostMessage;
.super Lo/willRunSimpleAnimations;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/willRunSimpleAnimations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/textformatter/FabricEncoderTags$Unknown;",
        "Lcom/dreamplug/textformatter/FabricEncoderTags;",
        "parentProperties",
        "Lcom/dreamplug/textformatter/TagProperties;",
        "(Lcom/dreamplug/textformatter/TagProperties;)V",
        "extractProperties",
        "",
        "element",
        "Lorg/w3c/dom/Element;",
        "textformatter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/getViewForPositionAndType;)V
    .locals 1

    const-string v0, "parentProperties"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lo/willRunSimpleAnimations;-><init>(Lo/getViewForPositionAndType;B)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
