.class final Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/GlideException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Appendable;

.field private onMessageChannelReady:Z


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 236
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final append(C)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 245
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 260
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 261
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 262
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 265
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method
