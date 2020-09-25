.class public final Lo/dismissSuggestions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dismissSuggestions$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/domain/PayloadDecoration;",
        "",
        "prefix",
        "",
        "suffix",
        "separator",
        "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V",
        "getPrefix",
        "()Ljava/lang/CharSequence;",
        "getSeparator",
        "getSuffix",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/dismissSuggestions;

.field public static final onPostMessage:Lo/dismissSuggestions$onPostMessage;

.field private static final onTransact:Lo/dismissSuggestions;


# instance fields
.field final extraCallback:Ljava/lang/CharSequence;

.field final onMessageChannelReady:Ljava/lang/CharSequence;

.field final onNavigationEvent:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/dismissSuggestions$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dismissSuggestions$onPostMessage;-><init>(B)V

    sput-object v0, Lo/dismissSuggestions;->onPostMessage:Lo/dismissSuggestions$onPostMessage;

    .line 16
    new-instance v0, Lo/dismissSuggestions;

    const-string v1, "["

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "]"

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ","

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Lo/dismissSuggestions;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sput-object v0, Lo/dismissSuggestions;->ICustomTabsCallback:Lo/dismissSuggestions;

    .line 17
    new-instance v0, Lo/dismissSuggestions;

    const-string v1, ""

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v0, v2, v1, v3}, Lo/dismissSuggestions;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sput-object v0, Lo/dismissSuggestions;->onTransact:Lo/dismissSuggestions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffix"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "separator"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    iput-object p2, p0, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    iput-object p3, p0, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    return-void
.end method

.method public static final synthetic extraCallback()Lo/dismissSuggestions;
    .locals 1

    .line 9
    sget-object v0, Lo/dismissSuggestions;->ICustomTabsCallback:Lo/dismissSuggestions;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady()Lo/dismissSuggestions;
    .locals 1

    .line 9
    sget-object v0, Lo/dismissSuggestions;->onTransact:Lo/dismissSuggestions;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/dismissSuggestions;

    if-eqz v0, :cond_0

    check-cast p1, Lo/dismissSuggestions;

    iget-object v0, p0, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    iget-object v1, p1, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    iget-object v1, p1, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    iget-object p1, p1, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayloadDecoration(prefix="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/dismissSuggestions;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/dismissSuggestions;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/dismissSuggestions;->onMessageChannelReady:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
