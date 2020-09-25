.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Landroid/widget/TextView;

.field private asBinder:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private asInterface:Z

.field extraCallback:I

.field onMessageChannelReady:Z

.field onNavigationEvent:I

.field onPostMessage:Landroid/widget/SeekBar;

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Lo/onFastForward$ICustomTabsCallback;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 1

    const/4 p4, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance v0, Landroidx/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$1;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->asBinder:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    new-instance v0, Landroidx/preference/SeekBarPreference$5;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$5;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->warmup:Landroid/view/View$OnKeyListener;

    .line 124
    sget-object v0, Lo/onFastForward$asBinder;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Lo/onFastForward$asBinder;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    .line 133
    sget p2, Lo/onFastForward$asBinder;->SeekBarPreference_android_max:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 1216
    iget p3, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    if-ge p2, p3, :cond_0

    move p2, p3

    .line 1219
    :cond_0
    iget p3, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    if-eq p2, p3, :cond_1

    .line 1220
    iput p2, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    .line 1221
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->onNavigationEvent()V

    .line 134
    :cond_1
    sget p2, Lo/onFastForward$asBinder;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 1241
    iget p3, p0, Landroidx/preference/SeekBarPreference;->onRelationshipValidationResult:I

    if-eq p2, p3, :cond_2

    .line 1242
    iget p3, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    iget p4, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    sub-int/2addr p3, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->onRelationshipValidationResult:I

    .line 1243
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->onNavigationEvent()V

    .line 135
    :cond_2
    sget p2, Lo/onFastForward$asBinder;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->onMessageChannelReady:Z

    .line 136
    sget p2, Lo/onFastForward$asBinder;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->asInterface:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady(Landroid/widget/SeekBar;)V
    .locals 2

    .line 293
    iget v0, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    if-eq v0, v1, :cond_5

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1264
    iget p1, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    if-ge v0, p1, :cond_0

    move v0, p1

    .line 1267
    :cond_0
    iget p1, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    if-le v0, p1, :cond_1

    move v0, p1

    .line 1271
    :cond_1
    iget p1, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    if-eq v0, p1, :cond_3

    .line 1272
    iput v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    .line 1273
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 1274
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/preference/SeekBarPreference;->onPostMessage(I)Z

    :cond_3
    return-void

    .line 298
    :cond_4
    iget v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_5
    return-void
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    .line 155
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->warmup:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    sget v0, Lo/onFastForward$onPostMessage;->seekbar:I

    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    .line 157
    sget v0, Lo/onFastForward$onPostMessage;->seekbar_value:I

    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    .line 158
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->asInterface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    .line 165
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->asBinder:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 175
    iget p1, p0, Landroidx/preference/SeekBarPreference;->onRelationshipValidationResult:I

    if-eqz p1, :cond_2

    .line 176
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->onRelationshipValidationResult:I

    .line 181
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 183
    iget v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->onPostMessage:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->mayLaunchUrl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void

    .line 328
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$onPostMessage;

    .line 329
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 330
    iget v0, p1, Landroidx/preference/SeekBarPreference$onPostMessage;->ICustomTabsCallback:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    .line 331
    iget v0, p1, Landroidx/preference/SeekBarPreference$onPostMessage;->onMessageChannelReady:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    .line 332
    iget p1, p1, Landroidx/preference/SeekBarPreference$onPostMessage;->extraCallback:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    .line 333
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->onNavigationEvent()V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 2

    .line 305
    invoke-super {p0}, Landroidx/preference/Preference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$onPostMessage;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$onPostMessage;-><init>(Landroid/os/Parcelable;)V

    .line 313
    iget v0, p0, Landroidx/preference/SeekBarPreference;->extraCallback:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$onPostMessage;->ICustomTabsCallback:I

    .line 314
    iget v0, p0, Landroidx/preference/SeekBarPreference;->onNavigationEvent:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$onPostMessage;->onMessageChannelReady:I

    .line 315
    iget v0, p0, Landroidx/preference/SeekBarPreference;->onTransact:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$onPostMessage;->extraCallback:I

    return-object v1
.end method
