.class final Lo/onResume$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onResume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private extraCallback:I

.field private synthetic onNavigationEvent:Lo/onResume;

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/onResume;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 238
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 239
    iget-object v1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v1}, Lo/onResume;->onMessageChannelReady(Lo/onResume;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v1}, Lo/onResume;->onPostMessage(Lo/onResume;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 240
    :cond_0
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->ICustomTabsCallback(Lo/onResume;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    .line 242
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->onNavigationEvent(Lo/onResume;)Z

    .line 244
    :cond_1
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lo/onResume;->ICustomTabsCallback(Lo/onResume;Z)Z

    .line 245
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v0}, Lo/onResume;->asInterface(Lo/onResume;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p1}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    return-void

    .line 248
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4085
    invoke-static {p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4084
    invoke-static {p1, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 249
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p1}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    return-void

    .line 251
    :cond_4
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p1}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    :cond_5
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 153
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p1}, Lo/onResume;->onMessageChannelReady(Lo/onResume;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iput p2, p0, Lo/onResume$5;->onPostMessage:I

    .line 155
    iput p4, p0, Lo/onResume$5;->extraCallback:I

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 161
    iget-object p3, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p3}, Lo/onResume;->onMessageChannelReady(Lo/onResume;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_1

    .line 166
    iget-object p3, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lo/onResume;->onPostMessage(Lo/onResume;Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, p4, :cond_2

    const/4 p3, 0x7

    if-ge p2, p3, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-le p3, p4, :cond_6

    .line 171
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 2142
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    const/4 p3, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "[^\\d]"

    const-string v3, ""

    .line 1157
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 172
    :goto_2
    iget-object v2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v2}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lt p3, p4, :cond_6

    .line 173
    iget-object p3, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p3}, Lo/onResume;->extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    const/16 p3, 0x10

    if-le p2, p3, :cond_7

    return-void

    .line 183
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget p2, p0, Lo/onResume$5;->onPostMessage:I

    const-string p3, "X"

    if-eqz p2, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget p4, p0, Lo/onResume$5;->onPostMessage:I

    add-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_8

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p0, Lo/onResume$5;->onPostMessage:I

    add-int/2addr p4, v1

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lo/onResume$5;->onPostMessage:I

    add-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_8
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 191
    iget-object p2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    iget-object p4, p2, Lo/onResume;->onPostMessage:Ljava/lang/String;

    invoke-static {p4}, Lo/onResume;->onNavigationEvent(Ljava/lang/String;)I

    move-result p4

    invoke-static {p2, p4}, Lo/onResume;->onNavigationEvent(Lo/onResume;I)I

    .line 192
    iget-object p2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    new-array p4, v1, [Landroid/text/InputFilter;

    .line 3104
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p2, Lo/onResume;->ICustomTabsCallback:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, p4, v0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 196
    :cond_9
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 201
    :cond_a
    iget-object p2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    iget-object p2, p2, Lo/onResume;->onPostMessage:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/onResume;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x0

    .line 204
    :goto_3
    array-length v2, p1

    if-ge p4, v2, :cond_c

    .line 205
    aget-object v2, p1, p4

    if-eqz v2, :cond_c

    if-eqz p4, :cond_b

    const/16 v2, 0x20

    .line 210
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_b
    aget-object v2, p1, p4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 215
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    iget v2, p0, Lo/onResume$5;->onPostMessage:I

    iget v3, p0, Lo/onResume$5;->extraCallback:I

    .line 216
    invoke-virtual {p2, p4, v2, v3}, Lo/onResume;->onMessageChannelReady(III)I

    move-result p2

    .line 220
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060226

    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 222
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 223
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    const/16 v5, 0x21

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 226
    :cond_d
    iget-object v2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {v2, v1}, Lo/onResume;->onMessageChannelReady(Lo/onResume;Z)Z

    .line 227
    iget-object v1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 229
    iget-object p2, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 231
    :cond_e
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 233
    :goto_4
    iget-object p1, p0, Lo/onResume$5;->onNavigationEvent:Lo/onResume;

    invoke-static {p1, v0}, Lo/onResume;->onMessageChannelReady(Lo/onResume;Z)Z

    return-void
.end method
