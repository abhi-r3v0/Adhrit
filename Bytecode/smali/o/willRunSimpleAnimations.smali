.class public abstract Lo/willRunSimpleAnimations;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/willRunSimpleAnimations$extraCallback;,
        Lo/willRunSimpleAnimations$onMessageChannelReady;,
        Lo/willRunSimpleAnimations$ICustomTabsCallback;,
        Lo/willRunSimpleAnimations$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u000c\r\u000e\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0004\u0010\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/textformatter/FabricEncoderTags;",
        "",
        "parentProperties",
        "Lcom/dreamplug/textformatter/TagProperties;",
        "(Lcom/dreamplug/textformatter/TagProperties;)V",
        "properties",
        "getProperties",
        "()Lcom/dreamplug/textformatter/TagProperties;",
        "extractProperties",
        "",
        "element",
        "Lorg/w3c/dom/Element;",
        "Icon",
        "Number",
        "Text",
        "Unknown",
        "Lcom/dreamplug/textformatter/FabricEncoderTags$Text;",
        "Lcom/dreamplug/textformatter/FabricEncoderTags$Number;",
        "Lcom/dreamplug/textformatter/FabricEncoderTags$Icon;",
        "Lcom/dreamplug/textformatter/FabricEncoderTags$Unknown;",
        "textformatter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onNavigationEvent:Lo/getViewForPositionAndType;


# direct methods
.method private constructor <init>(Lo/getViewForPositionAndType;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v0, p1, Lo/getViewForPositionAndType;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lo/getViewForPositionAndType;->onPostMessage:Ljava/lang/String;

    iget-object v2, p1, Lo/getViewForPositionAndType;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/getViewForPositionAndType;->onNavigationEvent:Lo/hasTargetScrollPosition;

    .line 2000
    new-instance v3, Lo/getViewForPositionAndType;

    invoke-direct {v3, v0, v1, v2, p1}, Lo/getViewForPositionAndType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/hasTargetScrollPosition;)V

    .line 12
    iput-object v3, p0, Lo/willRunSimpleAnimations;->onNavigationEvent:Lo/getViewForPositionAndType;

    return-void
.end method

.method public synthetic constructor <init>(Lo/getViewForPositionAndType;B)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/willRunSimpleAnimations;-><init>(Lo/getViewForPositionAndType;)V

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lorg/w3c/dom/Element;)V
.end method
