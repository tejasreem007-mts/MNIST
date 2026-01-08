function digit_gui()
load netCNN.mat

canvas = zeros(280,280);

fig = figure('Name','Digit Recognition','NumberTitle','off','Color','white');
ax = axes(fig,'Position',[0.05 0.2 0.6 0.75]);
imshow(canvas,'Parent',ax);

set(fig,'WindowButtonMotionFcn',@draw);

uicontrol('Style','pushbutton','String','Predict',...
    'Position',[420 120 120 40],'FontSize',12,'Callback',@predictDigit);

uicontrol('Style','pushbutton','String','Clear',...
    'Position',[420 70 120 40],'FontSize',12,'Callback',@clearCanvas);

txt = uicontrol('Style','text','Position',[420 170 150 40],...
    'FontSize',14,'BackgroundColor','white');

    function draw(~,~)
        if strcmp(get(fig,'SelectionType'),'normal')
            pt = round(get(ax,'CurrentPoint'));
            x = pt(1,1);
            y = pt(1,2);
            if x>2 && x<278 && y>2 && y<278
                canvas(y-2:y+2,x-2:x+2) = 1;
                imshow(canvas,'Parent',ax);
            end
        end
    end

    function predictDigit(~,~)
        img = imresize(canvas,[28 28]);
        img = reshape(img,[28 28 1 1]);
        label = classify(netCNN,img);
        txt.String = ['Predicted: ' char(label)];
    end

    function clearCanvas(~,~)
        canvas = zeros(280,280);
        imshow(canvas,'Parent',ax);
        txt.String = '';
    end
end
