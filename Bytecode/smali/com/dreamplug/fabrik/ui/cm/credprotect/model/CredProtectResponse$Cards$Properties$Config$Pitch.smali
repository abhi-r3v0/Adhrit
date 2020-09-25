.class public final Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pitch"
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "image",
        "Lcom/dreamplug/fabrik/ui/cm/models/Image;",
        "title",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "(Lcom/dreamplug/fabrik/ui/cm/models/Image;Lcom/dreamplug/textformatter/EncodedStringWrapper;)V",
        "getImage",
        "()Lcom/dreamplug/fabrik/ui/cm/models/Image;",
        "getTitle",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/getTargetScrollPosition;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Image;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/cm/models/Image;Lo/getTargetScrollPosition;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;->extraCallback:Lo/getTargetScrollPosition;

    return-void
.end method
