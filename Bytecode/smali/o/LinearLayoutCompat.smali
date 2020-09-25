.class public final Lo/LinearLayoutCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shouldApplyFrameworkTintUsingColorFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/shouldApplyFrameworkTintUsingColorFilter<",
        "Lo/toGlobalMotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Lo/toGlobalMotionEvent;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/toGlobalMotionEvent;

    .line 1170
    :try_start_0
    iget-object p0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object p0, p0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 2159
    iget-object p0, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {p0}, Lo/setSupportImageTintList;->ICustomTabsCallback()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 32
    invoke-static {p0, p1}, Lo/getSoftInputMode;->onNavigationEvent(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string v0, "GifEncoder"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to encode GIF drawable data"

    .line 36
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/applyFrameworkTintUsingColorFilter;)Lo/getSupportImageTintMode;
    .locals 0

    .line 23
    sget-object p1, Lo/getSupportImageTintMode;->extraCallback:Lo/getSupportImageTintMode;

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0

    .line 17
    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-static {p1, p2}, Lo/LinearLayoutCompat;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
